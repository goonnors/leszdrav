<?php

	if( ! isset( $IDX ) )
		$IDX = 0;

?>

<table class="form list">
	<thead>
		<tr>
			<td class="left"><?php echo $text_attribute_name; ?></td>
			<td class="center" width="80"><?php echo $text_enabled; ?></td>
			<td class="center" width="80"><?php echo $text_sort_order; ?></td>
			<td class="center" width="80"><?php echo $text_display_as_type; ?></td>
			<td class="center" width="145"><?php echo $text_display_list_of_items; ?></td>
			<td class="left"><?php echo $text_settings; ?></td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
				<?php echo $attrib_search; ?>
			</td>
			<td class="center">
				<input type="checkbox" name="<?php echo $_baseName; ?>[search][enabled]" value="1" <?php echo empty( $_baseValues['search']['enabled'] ) ? '' : 'checked="checked"'; ?> />
			</td>
			<td class="center">
				<input type="text" name="<?php echo $_baseName; ?>[search][sort_order]" value="<?php echo ! isset( $_baseValues['search']['sort_order'] ) ? '' : $_baseValues['search']['sort_order']; ?>" size="3" />
			</td>
			<td class="center">
				-
			</td>
			<td class="center">
				-
			</td>
			<td class="left">
				<input id="<?php echo $IDX; ?>_attribs_search_collapsed_a" style="vertical-align: middle; margin-top: 0" type="radio" name="<?php echo $_baseName; ?>[search][collapsed]" value="" <?php echo ! empty( $_baseValues['search']['collapsed'] ) ? '' : 'checked="checked"'; ?> />
				<label for="<?php echo $IDX; ?>_attribs_search_collapsed_a"><?php echo $text_show_header; ?></label>
				&nbsp;&nbsp;&nbsp;
				<input id="<?php echo $IDX; ?>_attribs_search_collapsed_b" style="vertical-align: middle; margin-top: 0" type="radio" name="<?php echo $_baseName; ?>[search][collapsed]" value="1" <?php echo ! empty( $_baseValues['search']['collapsed'] ) && $_baseValues['search']['collapsed'] == '1' ? 'checked="checked"' : ''; ?> />
				<label for="<?php echo $IDX; ?>_attribs_search_collapsed_b"><?php echo $text_collapsed_by_default; ?> <?php echo $text_and_show_header; ?></label>
				&nbsp;&nbsp;&nbsp;
				<input id="<?php echo $IDX; ?>_attribs_search_collapsed_c" style="vertical-align: middle; margin-top: 0" type="radio" name="<?php echo $_baseName; ?>[search][collapsed]" value="hide_header" <?php echo ! empty( $_baseValues['search']['collapsed'] ) && $_baseValues['search']['collapsed'] == 'hide_header' ? 'checked="checked"' : ''; ?> />
				<label for="<?php echo $IDX; ?>_attribs_search_collapsed_c"><?php echo $text_hide_header; ?></label>
				
				<br />
				
				<?php echo $text_with_delay_help; ?><input type="text" size="5" name="<?php echo $_baseName; ?>[search][refresh_delay]" value="<?php echo empty( $_baseValues['search']['refresh_delay'] ) ? '1000' : $_baseValues['search']['refresh_delay']; ?>" /> <?php echo $text_milliseconds; ?> ( -1 <?php echo $text_disabled; ?> )<br />
				
				<br />
				
				<input id="<?php echo $IDX; ?>_attribs_search_button" style="vertical-align: middle; margin-top: 0" type="checkbox" name="<?php echo $_baseName; ?>[search][button]" value="1" <?php echo empty( $_baseValues['search']['button'] ) ? '' : 'checked="checked"'; ?> />
				<label for="<?php echo $IDX; ?>_attribs_search_button"><?php echo $text_show_button_search; ?></label>
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $attrib_price; ?>
			</td>
			<td class="center">
				<input type="checkbox" name="<?php echo $_baseName; ?>[price][enabled]" value="1" <?php echo empty( $_baseValues['price']['enabled'] ) ? '' : 'checked="checked"'; ?> />
			</td>
			<td class="center">
				<input type="text" name="<?php echo $_baseName; ?>[price][sort_order]" value="<?php echo ! isset( $_baseValues['price']['sort_order'] ) ? '' : $_baseValues['price']['sort_order']; ?>" size="3" />
			</td>
			<td class="center">
				-
			</td>
			<td class="center">
				-
			</td>
			<td class="left">
				<input id="<?php echo $IDX; ?>_attribs_price_collapse" style="vertical-align: middle; margin-top: 0" type="checkbox" name="<?php echo $_baseName; ?>[price][collapsed]" value="1" <?php echo empty( $_baseValues['price']['collapsed'] ) ? '' : 'checked="checked"'; ?> />
				<label for="<?php echo $IDX; ?>_attribs_price_collapse"><?php echo $text_collapsed_by_default; ?></label>
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $attrib_manufacturers; ?>
			</td>
			<td class="center">
				<input type="checkbox" name="<?php echo $_baseName; ?>[manufacturers][enabled]" value="1" <?php echo empty( $_baseValues['manufacturers']['enabled'] ) ? '' : 'checked="checked"'; ?> />
			</td>
			<td class="center">
				<input type="text" name="<?php echo $_baseName; ?>[manufacturers][sort_order]" value="<?php echo ! isset( $_baseValues['manufacturers']['sort_order'] ) ? '' : $_baseValues['manufacturers']['sort_order']; ?>" size="3" />
			</td>
			<td class="center">
				<select name="<?php echo $_baseName; ?>[manufacturers][display_list_of_items]">
					<option value=""<?php echo empty( $_baseValues['manufacturers']['display_list_of_items'] ) ? ' selected="selected"' : ''; ?>><?php echo $text_by_default; ?></option>
					<option value="scroll"<?php echo ! empty( $_baseValues['manufacturers']['display_list_of_items'] ) && $_baseValues['manufacturers']['display_list_of_items'] == 'scroll' ? ' selected="selected"' : ''; ?>><?php echo $text_with_scroll; ?></option>
					<option value="button_more"<?php echo ! empty( $_baseValues['manufacturers']['display_list_of_items'] ) && $_baseValues['manufacturers']['display_list_of_items'] == 'button_more' ? ' selected="selected"' : ''; ?>><?php echo $text_with_button_more; ?></option>
				</select>
			</td>
			<td class="center">
				<?php $tmpTypes = array( 'checkbox', 'radio', 'select' ); ?>
				<select name="<?php echo $_baseName; ?>[manufacturers][display_as_type]">
					<?php $idxx = 0; foreach( $tmpTypes as $tmpType ) { ?>
						<option value="<?php echo $tmpType; ?>"<?php echo ( empty( $_baseValues['manufacturers']['display_as_type'] ) && ! $idxx ) || ( ! empty( $_baseValues['manufacturers']['display_as_type'] ) && $_baseValues['manufacturers']['display_as_type'] == $tmpType ) ? ' selected="selected"' : ''; ?>>
							<?php echo ${'text_type_' . $tmpType}; ?>
						</option>
					<?php $idxx++; } ?>
				</select>
			</td>
			<td class="left">
				<input id="<?php echo $IDX; ?>_attribs_manufacuters_collapse" style="vertical-align: middle; margin-top: 0" type="checkbox" name="<?php echo $_baseName; ?>[manufacturers][collapsed]" value="1" <?php echo empty( $_baseValues['manufacturers']['collapsed'] ) ? '' : 'checked="checked"'; ?> />
				<label for="<?php echo $IDX; ?>_attribs_manufacuters_collapse"><?php echo $text_collapsed_by_default; ?></label>
				&nbsp;&nbsp;&nbsp;
				<select name="<?php echo $_baseName; ?>[manufacturers][display_live_filter]">
					<option value=""<?php echo empty( $_baseValues['manufacturers']['display_live_filter'] ) ? ' selected="selected"' : ''; ?>><?php echo $text_display_live_filter; ?> <?php echo $text_by_default; ?></option>
					<option value="1"<?php echo ! empty( $_baseValues['manufacturers']['display_live_filter'] ) && $_baseValues['manufacturers']['display_live_filter'] == '1' ? ' selected="selected"' : ''; ?>><?php echo $text_display_live_filter; ?> - <?php echo $text_yes; ?></option>
					<option value="-1"<?php echo ! empty( $_baseValues['manufacturers']['display_live_filter'] ) && $_baseValues['manufacturers']['display_live_filter'] == '-1' ? ' selected="selected"' : ''; ?>><?php echo $text_display_live_filter; ?> - <?php echo $text_no; ?></option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $attrib_stock_status; ?>
			</td>
			<td class="center">
				<input type="checkbox" name="<?php echo $_baseName; ?>[stock_status][enabled]" value="1" <?php echo empty( $_baseValues['stock_status']['enabled'] ) ? '' : 'checked="checked"'; ?> />
			</td>
			<td class="center">
				<input type="text" name="<?php echo $_baseName; ?>[stock_status][sort_order]" value="<?php echo ! isset( $_baseValues['stock_status']['sort_order'] ) ? '' : $_baseValues['stock_status']['sort_order']; ?>" size="3" />
			</td>
			<td class="center">
				<select name="<?php echo $_baseName; ?>[stock_status][display_list_of_items]">
					<option value=""<?php echo empty( $_baseValues['stock_status']['display_list_of_items'] ) ? ' selected="selected"' : ''; ?>><?php echo $text_by_default; ?></option>
					<option value="scroll"<?php echo ! empty( $_baseValues['stock_status']['display_list_of_items'] ) && $_baseValues['stock_status']['display_list_of_items'] == 'scroll' ? ' selected="selected"' : ''; ?>><?php echo $text_with_scroll; ?></option>
					<option value="button_more"<?php echo ! empty( $_baseValues['stock_status']['display_list_of_items'] ) && $_baseValues['stock_status']['display_list_of_items'] == 'button_more' ? ' selected="selected"' : ''; ?>><?php echo $text_with_button_more; ?></option>
				</select>
			</td>
			<td class="center">
				<?php $tmpTypes = array( 'checkbox', 'radio', 'select' ); ?>
				<select name="<?php echo $_baseName; ?>[stock_status][display_as_type]">
					<?php $idxx = 0; foreach( $tmpTypes as $tmpType ) { ?>
						<option value="<?php echo $tmpType; ?>"<?php echo ( empty( $_baseValues['stock_status']['display_as_type'] ) && ! $idxx ) || ( ! empty( $_baseValues['stock_status']['display_as_type'] ) && $_baseValues['stock_status']['display_as_type'] == $tmpType ) ? ' selected="selected"' : ''; ?>>
							<?php echo ${'text_type_' . $tmpType}; ?>
						</option>
					<?php $idxx++; } ?>
				</select>
			</td>
			<td class="left">
				<input id="<?php echo $IDX; ?>_attribs_stock_status_collapse" style="vertical-align: middle; margin-top: 0" type="checkbox" name="<?php echo $_baseName; ?>[stock_status][collapsed]" value="1" <?php echo empty( $_baseValues['stock_status']['collapsed'] ) ? '' : 'checked="checked"'; ?> />
				<label for="<?php echo $IDX; ?>_attribs_stock_status_collapse"><?php echo $text_collapsed_by_default; ?></label>
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $attrib_rating; ?>
			</td>
			<td class="center">
				<input type="checkbox" name="<?php echo $_baseName; ?>[rating][enabled]" value="1" <?php echo empty( $_baseValues['rating']['enabled'] ) ? '' : 'checked="checked"'; ?> />
			</td>
			<td class="center">
				<input type="text" name="<?php echo $_baseName; ?>[rating][sort_order]" value="<?php echo ! isset( $_baseValues['rating']['sort_order'] ) ? '' : $_baseValues['rating']['sort_order']; ?>" size="3" />
			</td>
			<td class="center">
				-
			</td>
			<td class="center">
				-
			</td>
			<td class="left">
				<input id="<?php echo $IDX; ?>_attribs_rating_collapse" style="vertical-align: middle; margin-top: 0" type="checkbox" name="<?php echo $_baseName; ?>[rating][collapsed]" value="1" <?php echo empty( $_baseValues['rating']['collapsed'] ) ? '' : 'checked="checked"'; ?> />
				<label for="<?php echo $IDX; ?>_attribs_rating_collapse"><?php echo $text_collapsed_by_default; ?></label>
			</td>
		</tr>
	</tbody>
</table>