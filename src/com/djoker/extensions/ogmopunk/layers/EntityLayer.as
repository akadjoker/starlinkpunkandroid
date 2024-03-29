package com.djoker.extensions.ogmopunk.layers 
{
	import com.djoker.extensions.ogmopunk.OgmoEntityDefinition;
	import com.djoker.extensions.ogmopunk.OgmoLayer;
	import com.djoker.extensions.ogmopunk.OgmoProject;
	import com.djoker.SPEntity;
	/**
	 * ...
	 * @author Erin M Gunn
	 */
	public class EntityLayer extends OgmoLayer 
	{
		
		override public function loadData():Vector.<SPEntity> 
		{
			var entities:Vector.<SPEntity> = new Vector.<SPEntity>();
			
			var xml:XML;
			for each(xml in this.data.children())
			{
				var eDef:OgmoEntityDefinition = OgmoProject.entities[xml.localName().toString()];
				var e:SPEntity = eDef.loadData(xml);
				entities.push(e);
			}
			return entities;
		}
	}
}