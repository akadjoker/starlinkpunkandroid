package com.djoker.extensions.ogmopunk.layers
{
	import com.djoker.extensions.ogmopunk.OgmoLayer;
	import com.djoker.extensions.ogmopunk.OgmoProject;
	import com.djoker.masks.SPGrid;
	import com.djoker.SPEntity;
	/**
	 * ...
	 * @author Erin M Gunn
	 */
	public class GridLayer extends OgmoLayer
	{
		public var mExportMode:String;
		public function get exportMode():String
		{
			return mExportMode;
		}
		
		override public function loadData():Vector.<SPEntity> 
		{
			
			var e:SPEntity = new SPEntity(0, 0, name);
			e.setHitWidth(OgmoProject.levelDims.x);
			e.setHitHeight(OgmoProject.levelDims.y);
			var grid:SPGrid = new SPGrid(OgmoProject.levelDims.x, OgmoProject.levelDims.y, grid.x, grid.y);
			if (exportMode == "Bitstring")
			{
				grid.loadFromString(data.toString(), '', '\n');
			}
			e.mask = grid;
			
			var es:Vector.<SPEntity> = new Vector.<SPEntity>();
			es.push(e);
			return es;
			
			return null;
		}
		
	}

}